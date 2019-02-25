from fastai import *
from fastai.vision import *
from sklearn.metrics import f1_score, roc_curve, roc_auc_score
from sklearn.metrics import confusion_matrix
from sklearn import metrics

def accuracy(input:Tensor, targs:Tensor)->Rank0Tensor:
    n = targs.shape[0]
    input = input.argmax(dim=-1).view(n,-1)
    targs = targs.view(n,-1)
    return (input==targs).float().mean()

# Class Imbalance
def f1(input: Tensor, targs: Tensor) -> Rank0Tensor:
    n = targs.shape[0]
    input = input.argmax(dim=-1).view(n, -1)
    targs = targs.view(n, -1)
    f1 = f1_score(input, targs[:, -1], average='weighted')

    return torch.tensor(f1)


def specificity(input: Tensor, targs: Tensor) -> Rank0Tensor:
    n = targs.shape[0]
    input = input.argmax(dim=-1).view(n, -1)
    targs = targs.view(n, -1)

    tn, fp, fn, tp = confusion_matrix(input, targs).ravel()
    specificity = tn / (tn + fp)

    return torch.tensor(specificity)


def sensitivity(input: Tensor, targs: Tensor) -> Rank0Tensor:
    n = targs.shape[0]
    input = input.argmax(dim=-1).view(n, -1)
    targs = targs.view(n, -1)

    tn, fp, fn, tp = confusion_matrix(input, targs).ravel()
    sensitivity = tp / (tp + fn)

    return torch.tensor(sensitivity)

def auc(input: Tensor, targs: Tensor) -> Rank0Tensor:
    n = targs.shape[0]
    input = input.argmax(dim=-1).view(n, -1)
    targs = targs.view(n, -1)

    fpr, tpr, thresholds = metrics.roc_curve(input, targs)
    auc = metrics.auc(fpr, tpr)
    return torch.tensor(auc)

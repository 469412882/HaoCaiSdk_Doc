.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoBaseImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "action"    # Ljava/lang/Object;

    .line 724
    return-void
.end method

.method public addChild(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 739
    return-void
.end method

.method public canOpenPopup(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method public findAccessibilityNodeInfosByViewId(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 952
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "focus"    # I

    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method public focusSearch(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "direction"    # I

    .line 782
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionContextClick()Ljava/lang/Object;
    .locals 1

    .line 1057
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionList(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 825
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollDown()Ljava/lang/Object;
    .locals 1

    .line 1045
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollLeft()Ljava/lang/Object;
    .locals 1

    .line 1049
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollRight()Ljava/lang/Object;
    .locals 1

    .line 1053
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollToPosition()Ljava/lang/Object;
    .locals 1

    .line 1021
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionScrollUp()Ljava/lang/Object;
    .locals 1

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionSetProgress()Ljava/lang/Object;
    .locals 1

    .line 1025
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionShowOnScreen()Ljava/lang/Object;
    .locals 1

    .line 1037
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionInfoSelectionMode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 864
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 811
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawingOrder(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1065
    const/4 v0, 0x0

    return v0
.end method

.method public getError(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 956
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getInputType(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 960
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelFor(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 930
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabeledBy(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 940
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLiveRegion(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTextLength(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 970
    const/4 v0, -0x1

    return v0
.end method

.method public getMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public getRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 818
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoleDescription(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1014
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextSelectionEnd(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 981
    const/4 v0, -0x1

    return v0
.end method

.method public getTextSelectionStart(Landroid/view/accessibility/AccessibilityNodeInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 977
    const/4 v0, -0x1

    return v0
.end method

.method public getTraversalAfter(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 899
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraversalBefore(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 888
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 789
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 985
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public isContentInvalid(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public isContextClickable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1029
    const/4 v0, 0x0

    return v0
.end method

.method public isDismissable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method public isEditable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 996
    const/4 v0, 0x0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1072
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiLine(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1003
    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 720
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionInfo(IIZ)Ljava/lang/Object;
    .locals 1
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z

    .line 834
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "hierarchical"    # Z
    .param p4, "selectionMode"    # I

    .line 830
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z

    .line 856
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .line 851
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainRangeInfo(IFFF)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    .line 884
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public refresh(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "action"    # Ljava/lang/Object;

    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public removeChild(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "child"    # Landroid/view/View;

    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method public removeChild(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)Z
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public setAccessibilityFocused(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "focused"    # Z

    .line 772
    return-void
.end method

.method public setCanOpenPopup(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "opensPopup"    # Z

    .line 948
    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "collectionInfo"    # Ljava/lang/Object;

    .line 808
    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "collectionItemInfo"    # Ljava/lang/Object;

    .line 815
    return-void
.end method

.method public setContentInvalid(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "contentInvalid"    # Z

    .line 910
    return-void
.end method

.method public setContextClickable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "contextClickable"    # Z

    .line 1034
    return-void
.end method

.method public setDismissable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "dismissable"    # Z

    .line 993
    return-void
.end method

.method public setDrawingOrder(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "drawingOrderInParent"    # I

    .line 1069
    return-void
.end method

.method public setEditable(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "editable"    # Z

    .line 1000
    return-void
.end method

.method public setError(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "error"    # Ljava/lang/CharSequence;

    .line 917
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "importantForAccessibility"    # Z

    .line 1077
    return-void
.end method

.method public setInputType(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "inputType"    # I

    .line 964
    return-void
.end method

.method public setLabelFor(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "labeled"    # Landroid/view/View;

    .line 924
    return-void
.end method

.method public setLabelFor(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 927
    return-void
.end method

.method public setLabeledBy(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "labeled"    # Landroid/view/View;

    .line 934
    return-void
.end method

.method public setLabeledBy(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 937
    return-void
.end method

.method public setLiveRegion(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "mode"    # I

    .line 801
    return-void
.end method

.method public setMaxTextLength(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "max"    # I

    .line 967
    return-void
.end method

.method public setMovementGranularities(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "granularities"    # I

    .line 762
    return-void
.end method

.method public setMultiLine(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "multiLine"    # Z

    .line 1007
    return-void
.end method

.method public setParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 786
    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rangeInfo"    # Ljava/lang/Object;

    .line 822
    return-void
.end method

.method public setRoleDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "roleDescription"    # Ljava/lang/CharSequence;

    .line 1018
    return-void
.end method

.method public setSource(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 775
    return-void
.end method

.method public setTextSelection(Landroid/view/accessibility/AccessibilityNodeInfo;II)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 974
    return-void
.end method

.method public setTraversalAfter(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 903
    return-void
.end method

.method public setTraversalAfter(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 907
    return-void
.end method

.method public setTraversalBefore(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 892
    return-void
.end method

.method public setTraversalBefore(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "virtualDescendantId"    # I

    .line 896
    return-void
.end method

.method public setViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "viewId"    # Ljava/lang/String;

    .line 793
    return-void
.end method

.method public setVisibleToUser(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "visibleToUser"    # Z

    .line 769
    return-void
.end method

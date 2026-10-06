.class public Lcom/miui/networkassistant/ui/view/ScanningBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;
    }
.end annotation


# static fields
.field private static final SCANNING_RET_FAILED:I = 0x2

.field private static final SCANNING_RET_SUCCESSED:I = 0x1

.field private static final SCANNING_RET_UNKNOWN:I


# instance fields
.field private mListAdapter:Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;

.field private mScanningListView:Landroid/widget/ListView;

.field private mScanningRetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScanningTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/ScanningBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/ScanningBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/view/ScanningBar;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningTextList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    const v0, 0x7f0b09f7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningListView:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningTextList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;-><init>(Lcom/miui/networkassistant/ui/view/ScanningBar;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mListAdapter:Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public resetScanningBar()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mListAdapter:Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setScanningItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningTextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mListAdapter:Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setScanningRet(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningRetList:Ljava/util/List;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningTextList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningListView:Landroid/widget/ListView;

    add-int/2addr p1, v1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mScanningListView:Landroid/widget/ListView;

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar;->mListAdapter:Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

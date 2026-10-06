.class Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/view/ScanningBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanningBarAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/ScanningBar;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/view/ScanningBar;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->this$0:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p3, :cond_3

    const p2, 0x7f0b09f4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->this$0:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/view/ScanningBar;->access$000(Lcom/miui/networkassistant/ui/view/ScanningBar;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const p3, 0x7f0b09f5

    const/4 v0, 0x0

    const/16 v1, 0x8

    const v2, 0x7f0b09f6

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p3}, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p3, p1}, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0e02af

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

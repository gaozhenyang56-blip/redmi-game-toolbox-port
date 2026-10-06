.class Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;->b:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;->b:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-static {v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->c0(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;->b:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-static {v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->c0(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e03f0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;-><init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$a;)V

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;->a:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object p3, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;->b:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-static {p3}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->c0(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/deepsave/IdeaModel;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;

    iget-object v0, p3, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;->a:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lme/a;->h(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    iput-object p1, p3, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;->c:Ljava/lang/String;

    return-object p2
.end method

.class public Lrd/d;
.super Ll4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/d$b;
    }
.end annotation


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powercenter/deepsave/IdeaModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ll4/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrd/d;->d:Ljava/util/ArrayList;

    new-instance v0, Lrd/d$a;

    invoke-direct {v0, p0}, Lrd/d$a;-><init>(Lrd/d;)V

    iput-object v0, p0, Lrd/d;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic d(Lrd/d;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lrd/d;->j(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lrd/d;Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrd/d;->i(Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V

    return-void
.end method

.method private f(Lrd/d$b;Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lqd/c;->c()Lqd/c;

    move-result-object p2

    invoke-virtual {p2}, Lqd/c;->b()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p1, Lrd/d$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object p2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object p2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    if-lez p2, :cond_2

    iget-object p2, p1, Lrd/d$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lrd/d$b;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lrd/d$b;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v2, v2, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-direct {p0, p2, v2}, Lrd/d;->h(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iget-object p2, p1, Lrd/d$b;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v2, v2, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2}, Lrd/d;->g(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v0, :cond_3

    iget-object p2, p1, Lrd/d$b;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lrd/d$b;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lrd/d$b;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v2, v2, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-direct {p0, p2, v2}, Lrd/d;->h(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iget-object p2, p1, Lrd/d$b;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v0, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lrd/d;->g(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x2

    if-le p2, v0, :cond_4

    iget-object p2, p1, Lrd/d$b;->c:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lrd/d$b;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Lrd/d$b;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v1, v1, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lrd/d;->h(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iget-object p1, p1, Lrd/d$b;->c:Landroid/view/ViewGroup;

    iget-object p2, p0, Lrd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object p2, p2, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lrd/d;->g(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private g(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lme/a;->h(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private h(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private i(Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_CENTER_WEBVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Lme/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "title_append"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p2, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lrd/d;->d:Ljava/util/ArrayList;

    const-string v2, "idea_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lrd/d$b;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lrd/d$b;-><init>(Lrd/d$a;)V

    const p4, 0x7f0b0598

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p1, Lrd/d$b;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lrd/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p4, 0x7f0b0599

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p1, Lrd/d$b;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lrd/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p4, 0x7f0b059a

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p1, Lrd/d$b;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lrd/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p4, 0x7f0b07c2

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lrd/d$b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lrd/d;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrd/d$b;

    :goto_0
    iget-object p4, p1, Lrd/d$b;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p4, p1, Lrd/d$b;->a:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p1, Lrd/d$b;->b:Landroid/view/ViewGroup;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p1, Lrd/d$b;->c:Landroid/view/ViewGroup;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2}, Lx4/h0;->b(Landroid/view/View;)Z

    invoke-direct {p0, p1, p3}, Lrd/d;->f(Lrd/d$b;Landroid/content/Context;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e03ef

    return v0
.end method

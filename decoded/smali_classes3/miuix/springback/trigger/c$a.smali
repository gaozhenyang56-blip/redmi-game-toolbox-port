.class Lmiuix/springback/trigger/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/trigger/b$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/c;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/c;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiuix/springback/trigger/a$b;I)V
    .locals 0

    return-void
.end method

.method public b(Lmiuix/springback/trigger/a$b;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->V0(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Lmiuix/springback/trigger/a$b;)V
    .locals 0

    return-void
.end method

.method public d(Lmiuix/springback/trigger/a$b;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->U0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->W0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lmiuix/springback/trigger/a$b;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    iget-object p1, p1, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->J()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/c$a;->a:Lmiuix/springback/trigger/c;

    invoke-virtual {p1}, Lmiuix/springback/trigger/b;->X()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lmiuix/springback/trigger/c;->X0(Lmiuix/springback/trigger/c;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.class Lmiuix/springback/trigger/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/springback/trigger/b$k;


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

    iput-object p1, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiuix/springback/trigger/a$c;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Z0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->a1(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Lmiuix/springback/trigger/a$c;)V
    .locals 0

    return-void
.end method

.method public c(Lmiuix/springback/trigger/a$c;I)V
    .locals 1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    if-ge p2, v0, :cond_0

    iget-object p2, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {p2}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {p2}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    aget-object p1, p1, v0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->Z0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {p1}, Lmiuix/springback/trigger/c;->a1(Lmiuix/springback/trigger/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(Lmiuix/springback/trigger/a$c;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Z0(Lmiuix/springback/trigger/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/c$b;->a:Lmiuix/springback/trigger/c;

    invoke-static {v0}, Lmiuix/springback/trigger/c;->Y0(Lmiuix/springback/trigger/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lmiuix/springback/trigger/a$c;->mTriggerTexts:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.class Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/MainContentFrameFold;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    const p2, 0x7f0b01a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->w(Lcom/miui/securityscan/ui/main/MainContentFrameFold;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->v(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->v(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->v(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Landroid/widget/Button;

    move-result-object p1

    const p2, 0x7f0807ae

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->v(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    new-instance v0, Lcom/miui/securityscan/ui/main/j;

    invoke-direct {v0, p2}, Lcom/miui/securityscan/ui/main/j;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->x(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->y(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)I

    move-result p1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->y(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)I

    move-result p2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->x(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->f(II)V

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->z(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameFold$a;->a:Lcom/miui/securityscan/ui/main/MainContentFrameFold;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->z(Lcom/miui/securityscan/ui/main/MainContentFrameFold;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameFold;->setActionButtonText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.class Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/MainContentFrameLite;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    const p2, 0x7f0b01a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->B(Lcom/miui/securityscan/ui/main/MainContentFrameLite;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->A(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->A(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/securityscan/ui/main/h;->a(Landroid/widget/Button;Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->A(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    new-instance v0, Lcom/miui/securityscan/ui/main/l;

    invoke-direct {v0, p2}, Lcom/miui/securityscan/ui/main/l;-><init>(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->C(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->D(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)I

    move-result p1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->D(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)I

    move-result p2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->C(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->f(II)V

    :cond_1
    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->E(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrameLite$d;->a:Lcom/miui/securityscan/ui/main/MainContentFrameLite;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->E(Lcom/miui/securityscan/ui/main/MainContentFrameLite;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrameLite;->setActionButtonText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

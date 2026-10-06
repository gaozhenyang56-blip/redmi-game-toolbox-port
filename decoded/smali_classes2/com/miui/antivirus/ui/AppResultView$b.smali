.class Lcom/miui/antivirus/ui/AppResultView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/AppResultView;->h(Lcom/miui/antivirus/model/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/ui/AppResultView;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/AppResultView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$b;->a:Lcom/miui/antivirus/ui/AppResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$b;->a:Lcom/miui/antivirus/ui/AppResultView;

    const p2, 0x7f0b05a8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/miui/antivirus/ui/AppResultView;->g(Lcom/miui/antivirus/ui/AppResultView;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$b;->a:Lcom/miui/antivirus/ui/AppResultView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/AppResultView;->f(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/ui/AppResultView$b;->a:Lcom/miui/antivirus/ui/AppResultView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$b;->a:Lcom/miui/antivirus/ui/AppResultView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/AppResultView;->f(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$b;->a:Lcom/miui/antivirus/ui/AppResultView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/AppResultView;->f(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/Button;

    move-result-object p1

    const p2, 0x7f1202b8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

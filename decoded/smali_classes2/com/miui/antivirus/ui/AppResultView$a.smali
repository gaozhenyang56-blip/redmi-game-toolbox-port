.class Lcom/miui/antivirus/ui/AppResultView$a;
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
.field final synthetic a:Lcom/miui/antivirus/model/d;

.field final synthetic b:Lcom/miui/antivirus/ui/AppResultView;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/AppResultView;Lcom/miui/antivirus/model/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$a;->b:Lcom/miui/antivirus/ui/AppResultView;

    iput-object p2, p0, Lcom/miui/antivirus/ui/AppResultView$a;->a:Lcom/miui/antivirus/model/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$a;->b:Lcom/miui/antivirus/ui/AppResultView;

    const p2, 0x7f0b022c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-static {p1, p2}, Lcom/miui/antivirus/ui/AppResultView;->e(Lcom/miui/antivirus/ui/AppResultView;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$a;->b:Lcom/miui/antivirus/ui/AppResultView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/AppResultView;->d(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/ui/AppResultView$a;->b:Lcom/miui/antivirus/ui/AppResultView;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$a;->b:Lcom/miui/antivirus/ui/AppResultView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/AppResultView;->d(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/AppResultView$a;->b:Lcom/miui/antivirus/ui/AppResultView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/AppResultView;->d(Lcom/miui/antivirus/ui/AppResultView;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/antivirus/ui/AppResultView$a;->a:Lcom/miui/antivirus/model/d;

    invoke-virtual {p2}, Lcom/miui/antivirus/model/d;->z()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

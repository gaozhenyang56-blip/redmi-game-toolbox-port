.class Lcom/miui/powercenter/batteryhistory/d0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0a9a

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1, p2}, Lcom/miui/powercenter/batteryhistory/d0;->w(Lcom/miui/powercenter/batteryhistory/d0;Z)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0a9b

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    invoke-static {}, Lpg/d;->c()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lhd/a;->u1(Z)V

    const-string p2, "home"

    invoke-static {p2}, Lpg/e;->h(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p2}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object p2

    invoke-static {p2, p1, p1}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object p1

    const p2, 0x7f0e03e5

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0884

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f1212a3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0b022c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$k$a;

    invoke-direct {v0, p0, p2}, Lcom/miui/powercenter/batteryhistory/d0$k$a;-><init>(Lcom/miui/powercenter/batteryhistory/d0$k;Landroid/widget/CheckBox;)V

    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v1}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1212a5

    invoke-virtual {p2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/miui/powercenter/batteryhistory/d0$k$b;

    invoke-direct {p2, p0}, Lcom/miui/powercenter/batteryhistory/d0$k$b;-><init>(Lcom/miui/powercenter/batteryhistory/d0$k;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-static {p2}, Lhd/a;->u1(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$k;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    :goto_0
    invoke-static {}, Lhd/a;->W()V

    :cond_3
    :goto_1
    return-void
.end method

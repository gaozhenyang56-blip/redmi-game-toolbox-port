.class Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$a;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->x2(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$a;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-static {p1}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->c0(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    move-result-object p1

    invoke-static {p1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$a;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-static {p1}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->c0(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "key_fast_charge_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-static {}, Lgd/c;->W0()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$a;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-static {p1}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->c0(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    move-result-object p1

    const v0, 0x7f121047

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return p2
.end method

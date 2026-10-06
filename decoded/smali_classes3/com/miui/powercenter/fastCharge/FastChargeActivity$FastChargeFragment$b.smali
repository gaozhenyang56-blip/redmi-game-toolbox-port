.class Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$b;
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

    iput-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$b;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lgd/c;->y2(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment$b;->a:Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;

    invoke-static {p1}, Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;->c0(Lcom/miui/powercenter/fastCharge/FastChargeActivity$FastChargeFragment;)Lcom/miui/powercenter/fastCharge/FastChargeActivity;

    move-result-object p1

    invoke-static {p1}, Lsd/c;->a(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

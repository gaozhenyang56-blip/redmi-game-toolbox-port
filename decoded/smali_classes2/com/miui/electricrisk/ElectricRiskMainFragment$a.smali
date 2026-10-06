.class Lcom/miui/electricrisk/ElectricRiskMainFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/electricrisk/ElectricRiskMainFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/ElectricRiskMainFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/electricrisk/ElectricRiskMainFragment;


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/ElectricRiskMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment$a;->a:Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment$a;->a:Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-static {v0}, Lcom/miui/electricrisk/ElectricRiskMainFragment;->a0(Lcom/miui/electricrisk/ElectricRiskMainFragment;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment$a;->a:Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-static {v0, p1}, Lcom/miui/electricrisk/ElectricRiskMainFragment;->b0(Lcom/miui/electricrisk/ElectricRiskMainFragment;Z)Z

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment$a;->a:Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-static {v0}, Lcom/miui/electricrisk/ElectricRiskMainFragment;->c0(Lcom/miui/electricrisk/ElectricRiskMainFragment;)Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

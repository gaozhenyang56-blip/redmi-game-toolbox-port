.class Lcom/miui/electricrisk/ElectricRiskMainFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/ElectricRiskMainFragment;->onResume()V
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

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment$b;->a:Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment$b;->a:Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/electricrisk/ElectricRiskMainFragment$b;->a:Lcom/miui/electricrisk/ElectricRiskMainFragment;

    invoke-static {v1}, Lcom/miui/electricrisk/ElectricRiskMainFragment;->d0(Lcom/miui/electricrisk/ElectricRiskMainFragment;)Lcom/miui/electricrisk/ElectricRiskMainFragment$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/electricrisk/h;->h(Landroid/content/Context;Lcom/miui/electricrisk/ElectricRiskMainFragment$c;)V

    return-void
.end method

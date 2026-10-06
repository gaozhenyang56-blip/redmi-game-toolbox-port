.class Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$a;->a:Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment$a;->a:Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;

    invoke-static {p1}, Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;->c0(Lcom/miui/powercenter/nightcharge/ChargeProtectFragment;)V

    const-string p1, "SmartChargeFragment"

    const-string v0, "onChange: KEY_THIS_TIME_NO_PROTECT"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class Lcom/miui/powercenter/batteryhistory/d0$h;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$h;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$h;->a:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/d0;->h(Lcom/miui/powercenter/batteryhistory/d0;)V

    return-void
.end method

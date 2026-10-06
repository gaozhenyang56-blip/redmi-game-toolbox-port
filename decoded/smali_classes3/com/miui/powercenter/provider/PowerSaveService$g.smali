.class Lcom/miui/powercenter/provider/PowerSaveService$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/provider/PowerSaveService;->x(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$g;->b:Lcom/miui/powercenter/provider/PowerSaveService;

    iput-object p2, p0, Lcom/miui/powercenter/provider/PowerSaveService$g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/w;->C0(Landroid/content/Context;Z)V

    const-string v0, "Charged"

    invoke-static {v1, v0}, Lhd/a;->b1(ZLjava/lang/String;)V

    return-void
.end method

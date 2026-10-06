.class Lcom/miui/powercenter/PowerCenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/ActionBarContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/PowerCenter;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/PowerCenter;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerCenter$a;->a:Lcom/miui/powercenter/PowerCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter$a;->a:Lcom/miui/powercenter/PowerCenter;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerCenter;->onBackPressed()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter$a;->a:Lcom/miui/powercenter/PowerCenter;

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->f0(Lcom/miui/powercenter/PowerCenter;)V

    return-void
.end method

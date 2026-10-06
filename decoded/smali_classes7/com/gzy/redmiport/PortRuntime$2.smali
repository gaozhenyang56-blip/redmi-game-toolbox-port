.class Lcom/gzy/redmiport/PortRuntime$2;
.super Ljava/lang/Object;
.source "PortRuntime.java"

# interfaces
.implements Lrikka/shizuku/Shizuku$OnBinderDeadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/PortRuntime;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDead()V
    .registers 3

    .line 41
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$1(J)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortRuntime;->access$2(J)V

    # getter for: Lcom/gzy/redmiport/PortRuntime;->epoch:I
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$3()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->access$4(I)V

    const-string v0, "Shizuku \u8fde\u63a5\u5df2\u65ad\u5f00"

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->access$5(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->access$6(Z)V

    return-void
.end method

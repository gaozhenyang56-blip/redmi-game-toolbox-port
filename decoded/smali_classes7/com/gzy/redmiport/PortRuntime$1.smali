.class Lcom/gzy/redmiport/PortRuntime$1;
.super Ljava/lang/Object;
.source "PortRuntime.java"

# interfaces
.implements Lrikka/shizuku/Shizuku$OnBinderReceivedListener;


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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderReceived()V
    .registers 1

    .line 39
    # invokes: Lcom/gzy/redmiport/PortRuntime;->requestPermission()V
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->access$0()V

    return-void
.end method

.class public final synthetic Lpf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf/c;->a:Lcom/miui/securityscan/MainActivity;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    iget-object v0, p0, Lpf/c;->a:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->i0(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    return v0
.end method

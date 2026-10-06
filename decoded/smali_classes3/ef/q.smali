.class public final synthetic Lef/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lcom/miui/securitycenter/Application;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securitycenter/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/q;->a:Lcom/miui/securitycenter/Application;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    iget-object v0, p0, Lef/q;->a:Lcom/miui/securitycenter/Application;

    invoke-static {v0}, Lcom/miui/securitycenter/Application;->g(Lcom/miui/securitycenter/Application;)Z

    move-result v0

    return v0
.end method

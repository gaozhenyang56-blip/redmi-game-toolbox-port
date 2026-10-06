.class Lcom/miui/securityadd/input/InputProvider$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityadd/input/InputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityadd/input/InputProvider;


# direct methods
.method constructor <init>(Lcom/miui/securityadd/input/InputProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityadd/input/InputProvider$b;->a:Lcom/miui/securityadd/input/InputProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityadd/input/InputProvider$b;->a:Lcom/miui/securityadd/input/InputProvider;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/securityadd/input/InputProvider$b$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityadd/input/InputProvider$b$a;-><init>(Lcom/miui/securityadd/input/InputProvider$b;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.class Lfe/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/d;->c(Lfe/d$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/d$d;

.field final synthetic k:Lfe/d;


# direct methods
.method constructor <init>(Lfe/d;Lfe/d$d;)V
    .locals 0

    iput-object p1, p0, Lfe/d$b;->k:Lfe/d;

    iput-object p2, p0, Lfe/d$b;->a:Lfe/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 2

    invoke-static {p1}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/securitycenter/memory/IMemoryCheck;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/miui/securitycenter/memory/IMemoryCheck;->r2()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lfe/d$b;->a:Lfe/d$d;

    invoke-interface {v0, p1}, Lfe/d$d;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MemoryCheckManager"

    const-string v1, "getWhiteList"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lfe/d$b;->k:Lfe/d;

    invoke-static {p1}, Lfe/d;->a(Lfe/d;)Lo4/a;

    move-result-object p1

    const-string v0, "miui.intent.action.MEMORY_CHECK_SERVICE"

    invoke-virtual {p1, v0}, Lo4/a;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

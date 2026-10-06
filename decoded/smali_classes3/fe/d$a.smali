.class Lfe/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/d;->d(Lfe/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/d$c;

.field final synthetic k:Lfe/d;


# direct methods
.method constructor <init>(Lfe/d;Lfe/d$c;)V
    .locals 0

    iput-object p1, p0, Lfe/d$a;->k:Lfe/d;

    iput-object p2, p0, Lfe/d$a;->a:Lfe/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 2

    invoke-static {p1}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/securitycenter/memory/IMemoryCheck;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lfe/d$a$a;

    invoke-direct {v1, p0, p1}, Lfe/d$a$a;-><init>(Lfe/d$a;Lcom/miui/securitycenter/memory/IMemoryCheck;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p1, "MemoryCheckManager"

    const-string v1, "memoryCheck == null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lfe/d$a;->a:Lfe/d$c;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lfe/d$c;->a(Ljava/util/List;)V

    :goto_0
    return v0
.end method

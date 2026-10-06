.class Lcom/miui/gamebooster/service/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/w;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/w;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w$e;->a:Lcom/miui/gamebooster/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/w$e;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {p1}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IFreeformWindow;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/service/w;->d(Lcom/miui/gamebooster/service/w;Lcom/miui/gamebooster/service/IFreeformWindow;)Lcom/miui/gamebooster/service/IFreeformWindow;

    const/4 p1, 0x0

    return p1
.end method

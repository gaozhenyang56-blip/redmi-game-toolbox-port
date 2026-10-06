.class Lve/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/g;->l(Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gameturbo/active/IActiveManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lve/g;


# direct methods
.method constructor <init>(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lve/g$e;->c:Lve/g;

    iput-object p2, p0, Lve/g$e;->a:Lcom/miui/gameturbo/active/IActiveManager;

    iput-object p3, p0, Lve/g$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lve/g$e;->a:Lcom/miui/gameturbo/active/IActiveManager;

    iget-object v1, p0, Lve/g$e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/gameturbo/active/IActiveManager;->I6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

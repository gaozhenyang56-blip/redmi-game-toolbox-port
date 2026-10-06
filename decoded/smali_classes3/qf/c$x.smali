.class Lqf/c$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "x"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lqf/c$x;->a:Landroid/content/Context;

    iput-object p2, p0, Lqf/c$x;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lqf/c$x;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/v1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object v2, p0, Lqf/c$x;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "old_user"

    goto :goto_0

    :cond_0
    const-string v0, "new_user"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_homepage_action"

    invoke-static {v0, v1}, Lqf/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.class Lcom/miui/gamebooster/service/w$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/w;->j0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/miui/gamebooster/service/w;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/w;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w$f;->c:Lcom/miui/gamebooster/service/w;

    iput-object p2, p0, Lcom/miui/gamebooster/service/w$f;->a:Ljava/lang/String;

    iput p3, p0, Lcom/miui/gamebooster/service/w$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/w$f;->c:Lcom/miui/gamebooster/service/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/service/w;->e(Lcom/miui/gamebooster/service/w;J)J

    iget-object v0, p0, Lcom/miui/gamebooster/service/w$f;->c:Lcom/miui/gamebooster/service/w;

    invoke-static {v0}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leg/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_google_gaid"

    invoke-static {v1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La8/o0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/w$f;->c:Lcom/miui/gamebooster/service/w;

    invoke-static {v0}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/service/w$f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/service/w$f;->b:I

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/utils/a;->x0(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, La8/o0;->q(Z)V

    :cond_0
    return-void
.end method

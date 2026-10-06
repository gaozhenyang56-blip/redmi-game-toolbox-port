.class Lrf/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrf/h;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;

.field final synthetic b:Lrf/h;


# direct methods
.method constructor <init>(Lrf/h;Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lrf/h$a;->b:Lrf/h;

    iput-object p2, p0, Lrf/h$a;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lrf/h$a;->a:Lcom/miui/securityscan/MainFragment;

    iget-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->g0:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->f0:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->K1()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->y2()I

    :goto_0
    return-void
.end method

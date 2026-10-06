.class Lu6/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/e$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu6/e$d;


# direct methods
.method constructor <init>(Lu6/e$d;)V
    .locals 0

    iput-object p1, p0, Lu6/e$d$a;->a:Lu6/e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const-string v0, "key_no_speed"

    invoke-static {v0, p1}, Lr4/a;->o(Ljava/lang/String;F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1, p1}, Lx4/x1;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_no_speed_time"

    invoke-static {v0, p1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lu6/e$d$a;->a:Lu6/e$d;

    iget-object p1, p1, Lu6/e$d;->a:Lu6/e;

    invoke-static {p1}, Lu6/e;->l(Lu6/e;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lu6/e$d$a;->a:Lu6/e$d;

    iget-object v0, v0, Lu6/e$d;->a:Lu6/e;

    invoke-static {v0}, Lu6/e;->k(Lu6/e;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

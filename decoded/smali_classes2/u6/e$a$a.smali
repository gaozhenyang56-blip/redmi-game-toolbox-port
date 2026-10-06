.class Lu6/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu6/e$a;


# direct methods
.method constructor <init>(Lu6/e$a;)V
    .locals 0

    iput-object p1, p0, Lu6/e$a$a;->a:Lu6/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 10

    const-string v0, "key_no_speed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->g(Ljava/lang/String;F)F

    move-result v0

    sub-float v2, v0, p1

    new-instance v3, Lu6/d;

    invoke-direct {v3}, Lu6/d;-><init>()V

    const-string v4, "key_no_speed_time"

    const-string v5, ""

    invoke-static {v4, v5}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lu6/d;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%.2f"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lu6/d;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v8, v9, v5}, Lx4/x1;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lu6/d;->c:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, v7

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lu6/d;->d:Ljava/lang/String;

    cmpl-float p1, v0, v1

    if-eqz p1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v7

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iput-object p1, v3, Lu6/d;->e:Ljava/lang/String;

    invoke-static {v3}, Lu6/c;->a(Lu6/d;)V

    return-void
.end method

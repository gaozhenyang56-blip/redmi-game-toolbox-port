.class public final synthetic Lx5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lx5/e;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(JLx5/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lx5/d;->a:J

    iput-object p3, p0, Lx5/d;->b:Lx5/e;

    iput-object p4, p0, Lx5/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lx5/d;->a:J

    iget-object v2, p0, Lx5/d;->b:Lx5/e;

    iget-object v3, p0, Lx5/d;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lx5/e;->b(JLx5/e;Ljava/util/List;)V

    return-void
.end method

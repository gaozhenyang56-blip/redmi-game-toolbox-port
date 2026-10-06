.class public final synthetic Li7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li7/i;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Li7/i;Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/g;->a:Li7/i;

    iput-object p2, p0, Li7/g;->b:Ljava/lang/String;

    iput-wide p3, p0, Li7/g;->c:J

    iput-object p5, p0, Li7/g;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Li7/g;->a:Li7/i;

    iget-object v1, p0, Li7/g;->b:Ljava/lang/String;

    iget-wide v2, p0, Li7/g;->c:J

    iget-object v4, p0, Li7/g;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Li7/i;->b(Li7/i;Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method

.class Lw2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/b;->d(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lw2/b$a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lw2/b$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lw2/b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    new-instance v1, Lw2/b$a$a;

    invoke-direct {v1, p0}, Lw2/b$a$a;-><init>(Lw2/b$a;)V

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    return-void
.end method

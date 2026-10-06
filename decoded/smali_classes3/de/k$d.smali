.class Lde/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/k;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lde/k;


# direct methods
.method constructor <init>(Lde/k;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lde/k$d;->b:Lde/k;

    iput-object p2, p0, Lde/k$d;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lde/k$d;->b:Lde/k;

    iget-object v1, p0, Lde/k$d;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lde/k;->u(Landroid/content/Intent;)V

    return-void
.end method

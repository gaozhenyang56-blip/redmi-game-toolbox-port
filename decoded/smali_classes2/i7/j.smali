.class public final synthetic Li7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li7/i$d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/DialogInterface;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Li7/i$d;Ljava/lang/String;Landroid/content/DialogInterface;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/j;->a:Li7/i$d;

    iput-object p2, p0, Li7/j;->b:Ljava/lang/String;

    iput-object p3, p0, Li7/j;->c:Landroid/content/DialogInterface;

    iput-object p4, p0, Li7/j;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Li7/j;->a:Li7/i$d;

    iget-object v1, p0, Li7/j;->b:Ljava/lang/String;

    iget-object v2, p0, Li7/j;->c:Landroid/content/DialogInterface;

    iget-object v3, p0, Li7/j;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Li7/i$d;->a(Li7/i$d;Ljava/lang/String;Landroid/content/DialogInterface;Landroid/content/Context;)V

    return-void
.end method

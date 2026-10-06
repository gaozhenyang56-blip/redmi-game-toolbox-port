.class Lof/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lof/j;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lof/j$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lof/j$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lof/j;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lof/j$a;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lef/x;->O(Landroid/content/Context;Z)V

    return-void
.end method

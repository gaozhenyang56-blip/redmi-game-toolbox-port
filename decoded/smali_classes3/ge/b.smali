.class public final synthetic Lge/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lge/c;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lge/c;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lge/b;->a:Lge/c;

    iput-object p2, p0, Lge/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lge/b;->c:Landroid/content/Intent;

    iput-object p4, p0, Lge/b;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lge/b;->a:Lge/c;

    iget-object v1, p0, Lge/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lge/b;->c:Landroid/content/Intent;

    iget-object v3, p0, Lge/b;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lge/c;->a(Lge/c;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

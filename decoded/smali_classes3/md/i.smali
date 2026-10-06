.class public final synthetic Lmd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmd/h$c;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lmd/h$c;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd/i;->a:Lmd/h$c;

    iput-object p2, p0, Lmd/i;->b:Landroid/content/Context;

    iput-object p3, p0, Lmd/i;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmd/i;->a:Lmd/h$c;

    iget-object v1, p0, Lmd/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lmd/i;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lmd/h$c;->c(Lmd/h$c;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

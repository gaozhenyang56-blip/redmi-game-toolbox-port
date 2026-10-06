.class public final synthetic Lmd/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmd/h$c;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lmd/h$c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd/k;->a:Lmd/h$c;

    iput-object p2, p0, Lmd/k;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmd/k;->a:Lmd/h$c;

    iget-object v1, p0, Lmd/k;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lmd/h$c;->d(Lmd/h$c;Landroid/content/Context;)V

    return-void
.end method

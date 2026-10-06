.class public final synthetic Lx5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc6/h$a;

.field public final synthetic b:Landroid/media/AudioManager;


# direct methods
.method public synthetic constructor <init>(Lc6/h$a;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/l;->a:Lc6/h$a;

    iput-object p2, p0, Lx5/l;->b:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx5/l;->a:Lc6/h$a;

    iget-object v1, p0, Lx5/l;->b:Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lx5/p;->a(Lc6/h$a;Landroid/media/AudioManager;)V

    return-void
.end method

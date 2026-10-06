.class Lnm/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm/b;->k(ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lnm/b;


# direct methods
.method constructor <init>(Lnm/b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lnm/b$d;->b:Lnm/b;

    iput-object p2, p0, Lnm/b$d;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lnm/b$d;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

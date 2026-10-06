.class public final synthetic Lmiuix/appcompat/app/floatingactivity/helper/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/f;->a:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/f;->b:Z

    iput p3, p0, Lmiuix/appcompat/app/floatingactivity/helper/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/f;->a:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/f;->b:Z

    iget v2, p0, Lmiuix/appcompat/app/floatingactivity/helper/f;->c:I

    invoke-static {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->b(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V

    return-void
.end method

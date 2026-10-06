.class public Ld8/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ld8/d$a;

.field public b:Ld8/d$a;

.field public c:Lmiuix/slidingwidget/widget/SlidingButton;

.field public d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld8/d$a;

    invoke-direct {v0}, Ld8/d$a;-><init>()V

    iput-object v0, p0, Ld8/d$b;->a:Ld8/d$a;

    new-instance v0, Ld8/d$a;

    invoke-direct {v0}, Ld8/d$a;-><init>()V

    iput-object v0, p0, Ld8/d$b;->b:Ld8/d$a;

    return-void
.end method

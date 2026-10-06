.class final Landroidx/fragment/app/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/fragment/app/Fragment;

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroidx/lifecycle/l$b;

.field i:Landroidx/lifecycle/l$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/s$a;->a:I

    iput-object p2, p0, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/s$a;->c:Z

    sget-object p1, Landroidx/lifecycle/l$b;->e:Landroidx/lifecycle/l$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/l$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->i:Landroidx/lifecycle/l$b;

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/Fragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/s$a;->a:I

    iput-object p2, p0, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/s$a;->c:Z

    sget-object p1, Landroidx/lifecycle/l$b;->e:Landroidx/lifecycle/l$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/l$b;

    iput-object p1, p0, Landroidx/fragment/app/s$a;->i:Landroidx/lifecycle/l$b;

    return-void
.end method

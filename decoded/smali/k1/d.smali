.class public Lk1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# instance fields
.field private final a:Lk1/f;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lj1/c;

.field private final d:Lj1/d;

.field private final e:Lj1/f;

.field private final f:Lj1/f;

.field private final g:Ljava/lang/String;

.field private final h:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk1/f;Landroid/graphics/Path$FillType;Lj1/c;Lj1/d;Lj1/f;Lj1/f;Lj1/b;Lj1/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk1/d;->a:Lk1/f;

    iput-object p3, p0, Lk1/d;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lk1/d;->c:Lj1/c;

    iput-object p5, p0, Lk1/d;->d:Lj1/d;

    iput-object p6, p0, Lk1/d;->e:Lj1/f;

    iput-object p7, p0, Lk1/d;->f:Lj1/f;

    iput-object p1, p0, Lk1/d;->g:Ljava/lang/String;

    iput-object p8, p0, Lk1/d;->h:Lj1/b;

    iput-object p9, p0, Lk1/d;->i:Lj1/b;

    iput-boolean p10, p0, Lk1/d;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 1

    new-instance v0, Lf1/h;

    invoke-direct {v0, p1, p2, p0}, Lf1/h;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/d;)V

    return-object v0
.end method

.method public b()Lj1/f;
    .locals 1

    iget-object v0, p0, Lk1/d;->f:Lj1/f;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    iget-object v0, p0, Lk1/d;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Lj1/c;
    .locals 1

    iget-object v0, p0, Lk1/d;->c:Lj1/c;

    return-object v0
.end method

.method public e()Lk1/f;
    .locals 1

    iget-object v0, p0, Lk1/d;->a:Lk1/f;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lj1/d;
    .locals 1

    iget-object v0, p0, Lk1/d;->d:Lj1/d;

    return-object v0
.end method

.method public h()Lj1/f;
    .locals 1

    iget-object v0, p0, Lk1/d;->e:Lj1/f;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lk1/d;->j:Z

    return v0
.end method

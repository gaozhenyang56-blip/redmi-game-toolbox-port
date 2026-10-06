.class Lof/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lof/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lx1/a;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

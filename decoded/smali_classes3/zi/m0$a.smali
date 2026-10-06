.class public Lzi/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final d:Lzi/m0;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzi/m0;

    invoke-direct {v0}, Lzi/m0;-><init>()V

    sput-object v0, Lzi/m0$a;->d:Lzi/m0;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzi/m0$a;->a:I

    iput-object p2, p0, Lzi/m0$a;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Lzi/m0;
    .locals 1

    sget-object v0, Lzi/m0$a;->d:Lzi/m0;

    return-object v0
.end method

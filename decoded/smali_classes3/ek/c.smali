.class public abstract Lek/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lek/c$a;
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lek/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lek/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lek/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lek/c$a;-><init>(Lbk/g;)V

    sput-object v0, Lek/c;->a:Lek/c$a;

    sget-object v0, Lvj/b;->a:Lvj/a;

    invoke-virtual {v0}, Lvj/a;->b()Lek/c;

    move-result-object v0

    sput-object v0, Lek/c;->b:Lek/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lek/c;
    .locals 1

    sget-object v0, Lek/c;->b:Lek/c;

    return-object v0
.end method


# virtual methods
.method public abstract b()I
.end method

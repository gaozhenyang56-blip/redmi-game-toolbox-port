.class public interface abstract Ltj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltj/e$b;,
        Ltj/e$a;
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# static fields
.field public static final e0:Ltj/e$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ltj/e$b;->a:Ltj/e$b;

    sput-object v0, Ltj/e;->e0:Ltj/e$b;

    return-void
.end method


# virtual methods
.method public abstract F(Ltj/d;)V
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract H(Ltj/d;)Ltj/d;
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ltj/d<",
            "-TT;>;)",
            "Ltj/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

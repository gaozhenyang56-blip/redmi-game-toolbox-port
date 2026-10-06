.class public interface abstract Lym/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lym/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lym/b$a;

    invoke-direct {v0}, Lym/b$a;-><init>()V

    sput-object v0, Lym/b;->a:Lym/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lym/b0;Lym/z;)Lym/x;
    .param p1    # Lym/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

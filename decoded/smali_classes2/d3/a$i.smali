.class final Ld3/a$i;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld3/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Landroid/text/Editable;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ld3/a$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld3/a$i;

    invoke-direct {v0}, Ld3/a$i;-><init>()V

    sput-object v0, Ld3/a$i;->a:Ld3/a$i;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/text/Editable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld3/a$i;->a()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

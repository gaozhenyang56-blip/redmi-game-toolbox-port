.class public abstract Lcom/miui/antivirus/model/b;
.super Lcom/miui/antivirus/model/c;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/model/c;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/model/b;->c:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/model/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

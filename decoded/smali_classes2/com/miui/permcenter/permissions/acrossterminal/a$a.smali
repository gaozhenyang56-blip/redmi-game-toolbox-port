.class public Lcom/miui/permcenter/permissions/acrossterminal/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/permissions/acrossterminal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/permissions/acrossterminal/a$a;->c:I

    return-void
.end method

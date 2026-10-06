.class public final synthetic Lmiuix/preference/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/preference/i;

.field public final synthetic b:Landroidx/preference/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lmiuix/preference/i;Landroidx/preference/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/preference/h;->a:Lmiuix/preference/i;

    iput-object p2, p0, Lmiuix/preference/h;->b:Landroidx/preference/h;

    iput p3, p0, Lmiuix/preference/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmiuix/preference/h;->a:Lmiuix/preference/i;

    iget-object v1, p0, Lmiuix/preference/h;->b:Landroidx/preference/h;

    iget v2, p0, Lmiuix/preference/h;->c:I

    invoke-static {v0, v1, v2}, Lmiuix/preference/i;->s(Lmiuix/preference/i;Landroidx/preference/h;I)V

    return-void
.end method

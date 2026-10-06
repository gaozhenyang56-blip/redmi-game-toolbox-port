.class public Lmiuix/appcompat/app/DelegateFragmentFactory;
.super Landroidx/fragment/app/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/h;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragmentDelegate(Landroidx/fragment/app/Fragment;)Lmiuix/appcompat/app/FragmentDelegate;
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

CREATE TABLE IF NOT EXISTS public.organizations
(
    organization_id text PRIMARY KEY,
    name text,
    contact_name text,
    contact_email text,
    contact_phone text
);

CREATE TABLE IF NOT EXISTS public.licenses
(
    license_id text PRIMARY KEY,
    organization_id text NOT NULL REFERENCES public.organizations(organization_id),
    description text,
    product_name text NOT NULL,
    license_type text NOT NULL,
    comment text
    );

INSERT INTO public.organizations VALUES
                                     ('e6a625cc-718b-48c2-ac76-1dfdff9a531e', 'Ostock', 'Illary Huaylupo', 'illaryhs@gmail.com', '888888888'),
                                     ('d898a142-de44-466c-8c88-9ceb2c2429d3', 'OptimaGrowth', 'Admin', 'illaryhs@gmail.com', '888888888'),
                                     ('e839ee96-28de-4f67-bb79-870ca89743a0', 'Ostock', 'Illary Huaylupo', 'illaryhs@gmail.com', '888888888');

INSERT INTO public.licenses VALUES
                                ('f2a9c9d4-d2c0-44fa-97fe-724d77173c62', 'd898a142-de44-466c-8c88-9ceb2c2429d3', 'Software Product', 'Ostock', 'complete', 'I AM DEV'),
                                ('279709ff-e6d5-4a54-8b55-a5c37542025b', 'e839ee96-28de-4f67-bb79-870ca89743a0', 'Software Product', 'Ostock', 'complete', 'I AM DEV');